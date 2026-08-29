const express = require("express");
const { Pool } = require("pg");

const app = express();
const PORT = 3000;

// Middleware
app.use(express.json());
app.use(express.static("public"));

// PostgreSQL connection
const pool = new Pool({
    host: process.env.DB_HOST || "db",
    port: process.env.DB_PORT || 5432,
    database: process.env.DB_NAME || "inventory",
    user: process.env.DB_USER || "inventory",
    password: process.env.DB_PASSWORD || "inventory123"
});

// Test database connection
pool.connect()
    .then(client => {
        console.log("Connected to PostgreSQL");
        client.release();
    })
    .catch(err => {
        console.error("Database connection failed:", err.message);
    });


// Get all users
app.get("/api/users", async (req, res) => {
    try {
        const result = await pool.query(
            "SELECT * FROM users ORDER BY id"
        );

        res.json(result.rows);

    } catch (err) {
        console.error(err);
        res.status(500).json({
            error: "Failed to fetch users"
        });
    }
});


// Add a user
app.post("/api/users", async (req, res) => {

    const { name, email } = req.body;

    if (!name || !email) {
        return res.status(400).json({
            error: "Name and email are required"
        });
    }

    try {

        const result = await pool.query(
            "INSERT INTO users (name, email) VALUES ($1, $2) RETURNING *",
            [name, email]
        );

        res.status(201).json(result.rows[0]);

    } catch (err) {

        console.error(err);

        res.status(500).json({
            error: "Failed to add user"
        });
    }
});


// Delete a user
app.delete("/api/users/:id", async (req, res) => {

    const { id } = req.params;

    try {

        await pool.query(
            "DELETE FROM users WHERE id = $1",
            [id]
        );

        res.json({
            message: "User deleted successfully"
        });

    } catch (err) {

        console.error(err);

        res.status(500).json({
            error: "Failed to delete user"
        });
    }
});


// Start server
app.listen(PORT, "0.0.0.0", () => {
    console.log(`Web server running on port ${PORT}`);
});

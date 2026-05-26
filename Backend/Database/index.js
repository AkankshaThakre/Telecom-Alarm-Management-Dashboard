const sqlite3 = require('sqlite3').verbose();
const path = require('path');

const dbPath = path.join(__dirname, 'alarms.db');

console.log(dbPath,"dbPath")

const db = new sqlite3.Database(dbPath, (err) => {
    if (err) {
        console.log(`Error connecting to sqlite3, ${err}`)
    }
    else {
        console.log("Connection with sqlite3 established successfully");

        db.run(`CREATE TABLE IF NOT EXISTS alarms (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            node_name TEXT,
            alarm_type TEXT,
            severity TEXT,
            message TEXT
            status TEXT DEFAULT 'ACTIVE',
            created_at DATETIME DEFAULT CURRENT_TIMESTAMP
        )`)
    }
});

module.exports = db;
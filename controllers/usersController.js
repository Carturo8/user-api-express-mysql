import { db } from '../config/db.js';

export const getUsers = (req, res) => {
    db.query('SELECT * FROM usuarios', (err, results) => {
        if (err) return res.status(500).json(err);
        res.json(results);
    });
};

export const addUser = (req, res) => {
    const { nombre, email, rol, nivel } = req.body;
    db.query('INSERT INTO usuarios (nombre, email, rol, nivel) VALUES (?, ?)', [nombre, email, rol, nivel], (err) => {
        if (err) return res.status(500).json(err);
        res.json({ message: 'User added successfully' });
    });
};

export const updateUser = (req, res) => {
    const { nombre, email, rol, nivel } = req.body;
    db.query('UPDATE usuarios SET nombre = ?, email = ?, rol = ?, nivel = ? WHERE id = ?', [nombre, email, rol, nivel, req.query.id], (err) => {
        if (err) return res.status(500).json(err);
        res.json({ message: 'User updated successfully' });
    });
};

export const deleteUser = (req, res) => {
    db.query('DELETE FROM usuarios WHERE id = ?', [req.query.id], (err) => {
        if (err) return res.status(500).json(err);
        res.json({ message: 'User deleted' });
    });
};

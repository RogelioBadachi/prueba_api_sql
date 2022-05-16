const Pool = require('pg').Pool
const pool = new Pool({
    user: 'postgres',//'me',
    host: 'containers-us-west-43.railway.app',//'localhost',
    password: '3NhO0ziXVp8895J9pFy8',//'password',
    port: 5648,//5432,
    database: 'railway'//'postgresql://${{ PGUSER }}:${{ PGPASSWORD }}@${{ PGHOST }}:${{ PGPORT }}/${{ PGDATABASE }}',//'api',
})

const getUsers = (request, response) => {
    pool.query('SELECT * FROM users ORDER BY id ASC', (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
}
const getUserById = (request, response) => {
    const id = parseInt(request.params.id)

    pool.query('SELECT * FROM users WHERE id = $1', [id], (error, results) => {
        if (error) {
            throw error
        }
        response.status(200).json(results.rows)
    })
} 

module.exports = {
    getUsers,
    getUserById
}
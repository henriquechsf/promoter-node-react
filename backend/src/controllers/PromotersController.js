const connection = require('../database/connection')

module.exports = {

    // listar todos promotores
    async index(req, res) {
        const { page = 1 } = req.query

        const [count] = await connection('promotor').count()
        console.log(count)

        const promoters = await connection('promotor')
            .limit(10)
            .offset((page - 1) * 10)
            .select([
                'promotor.cod',
                'promotor.nome',
                'promotor.supervisao_cod',
                'promotor.status_cod'
            ])

        // contagem de promotores
        res.header('X-Total-Count', count['count(*)'])

        return res.json(promoters)
    }

}
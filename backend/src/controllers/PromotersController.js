const connection = require('../database/connection')

module.exports = {

    // listar todos promotores
    async index(req, res) {
        const { page = 1 } = req.query

        const [count] = await connection('promotor').count()
        //console.log(count)

        const promoters = await connection('promotor as prom')
            //.limit(10)
            //.offset((page - 1) * 10)
            .leftJoin('supervisao as sup', 'prom.supervisao_cod', '=', 'sup.cod')
            .leftJoin('gerencia as ger', 'ger.cod', '=', 'sup.gerencia_cod')
            .leftJoin('gestor as ges', 'sup.gestor_cod', '=', 'ges.cod')
            .leftJoin('status', 'prom.status_cod', '=', 'status.cod')
            .select([
                'prom.cod',
                'prom.nome',
                'prom.status_cod',
                'sup.nome as supervisaoNome',
                'ger.nome as gerenciaNome',
                'ges.nome as gestorNome',
                'status.nome as statusNome'
            ])
            .orderBy('cod')


        // contagem de promotores
        res.header('X-Total-Count', count['count(*)'])

        return res.json(promoters)
    }

}
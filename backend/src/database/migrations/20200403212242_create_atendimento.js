
exports.up = function (knex) {
    return knex.schema.createTable('atendimento', function (table) {
        table.increments('cod').primary()
        table.timestamps('data')
        table.text('descricao')

        table.integer('promotor_cod').notNullable()
        table.foreign('promotor_cod').references('cod').inTable('promotor')

        table.integer('tipo_atendimento_cod').notNullable()
        table.foreign('tipo_atendimento_cod').references('cod').inTable('tipo_atendimento')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('atendimento')
};

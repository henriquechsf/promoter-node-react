
exports.up = function (knex) {
    return knex.schema.createTable('ocorrencia', function (table) {
        table.increments('cod').primary()
        table.timestamps('data')
        table.text('descricao')

        table.integer('promotor_cod').notNullable()
        table.foreign('promotor_cod').references('cod').inTable('promotor')

        table.integer('tipo_ocorrencia_cod').notNullable()
        table.foreign('tipo_ocorrencia_cod').references('cod').inTable('tipo_ocorrencia')

        table.integer('status_ocorrencia_cod')
        table.foreign('status_ocorrencia_cod').references('cod').inTable('status_ocorrencia')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('ocorrencia')
};

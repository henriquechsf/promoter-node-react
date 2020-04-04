
exports.up = function (knex) {
    return knex.schema.createTable('supervisao', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
        table.string('sigla')

        table.integer('gerencia_cod').notNullable()
        table.foreign('gerencia_cod').references('cod').inTable('gerencia')

        table.integer('gestor_cod')
        table.foreign('gestor_cod').references('cod').inTable('gestor')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('supervisao')
};

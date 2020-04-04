
exports.up = function (knex) {
    return knex.schema.createTable('gerencia', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
        table.string('sigla')

        table.integer('gestor_cod')
        table.foreign('gestor_cod').references('cod').inTable('gestor')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('gerencia')
};

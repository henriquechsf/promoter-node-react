
exports.up = function (knex) {
    return knex.schema.createTable('gestor', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
        table.string('telefone')
        table.string('email')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('gestor')
};

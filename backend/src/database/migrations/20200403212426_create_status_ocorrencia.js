
exports.up = function (knex) {
    return knex.schema.createTable('status_ocorrencia', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('status_ocorrencia')
};

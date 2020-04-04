
exports.up = function (knex) {
    return knex.schema.createTable('tipo_ocorrencia', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('tipo_ocorrencia')
};


exports.up = function (knex) {
    return knex.schema.createTable('status_celular', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('status_celular')
};

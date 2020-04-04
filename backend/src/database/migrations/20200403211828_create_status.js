
exports.up = function (knex) {
    return knex.schema.createTable('status', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('status')
};

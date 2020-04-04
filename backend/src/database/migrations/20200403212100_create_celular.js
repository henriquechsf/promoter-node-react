
exports.up = function (knex) {
    return knex.schema.createTable('celular', function (table) {
        table.bigInteger('imei').primary()
        table.string('modelo')
        table.string('linha')
        table.string('contagoogle')

        table.integer('status_celular_cod').notNullable()
        table.foreign('status_celular_cod').references('cod').inTable('status_celular')

        table.integer('promotor_cod')
        table.foreign('promotor_cod').references('cod').inTable('promotor')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('celular')
};

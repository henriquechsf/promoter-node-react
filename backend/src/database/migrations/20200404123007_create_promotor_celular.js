
exports.up = function (knex) {
    return knex.schema.createTable('promotor_celular', function (table) {
        table.integer('promotor_cod')
        table.foreign('promotor_cod').references('cod').inTable('promotor')

        table.bigInteger('celular_imei')
        table.foreign('celular_imei').references('imei').inTable('celular')

        table.date('data_entrega')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('promotor_celular')
};

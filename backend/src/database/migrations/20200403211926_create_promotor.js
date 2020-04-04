
exports.up = function (knex) {
    return knex.schema.createTable('promotor', function (table) {
        table.integer('cod').primary()
        table.string('nome').notNullable()
        table.string('cidade')
        table.boolean('roteiro')

        table.integer('supervisao_cod').notNullable()
        table.foreign('supervisao_cod').references('cod').inTable('supervisao')

        table.integer('status_cod').notNullable
        table.foreign('status_cod').references('cod').inTable('status')
    })
};

exports.down = function (knex) {
    return knex.schema.dropTable('promotor')
};

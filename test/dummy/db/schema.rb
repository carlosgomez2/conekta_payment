# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140910224916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "conekta_payment_pays", force: true do |t|
    t.integer  "cart_id",                                            null: false
    t.string   "email",                                              null: false
    t.string   "cash_type",                                          null: false
    t.decimal  "total",      precision: 5, scale: 2
    t.hstore   "cart",                                               null: false
    t.hstore   "charge"
    t.boolean  "paid",                               default: false
    t.string   "last_four"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

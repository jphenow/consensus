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

ActiveRecord::Schema.define(version: 20130108110103) do

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type", "commentable_id", "id"], name: "index_comments_on_commentable_type_and_commentable_id_and_id", unique: true
  add_index "comments", ["commentable_type", "commentable_id"], name: "index_comments_on_commentable_type_and_commentable_id"
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type"

  create_table "documents", force: true do |t|
    t.text     "abstract"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proposal_id"
  end

  add_index "documents", ["proposal_id"], name: "index_documents_on_proposal_id"

  create_table "links", force: true do |t|
    t.string   "kind",        default: "documentation"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proposal_id"
  end

  add_index "links", ["proposal_id"], name: "index_links_on_proposal_id"

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paragraphs", force: true do |t|
    t.integer  "section_id"
    t.integer  "position"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "paragraphs", ["position"], name: "index_paragraphs_on_position"
  add_index "paragraphs", ["section_id"], name: "index_paragraphs_on_section_id"

  create_table "participants", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "organization_id"
  end

  add_index "participants", ["organization_id"], name: "index_participants_on_organization_id"

  create_table "proposals", force: true do |t|
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proposals", ["organization_id"], name: "index_proposals_on_organization_id"

  create_table "sections", force: true do |t|
    t.integer  "document_id"
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proposal_id"
  end

  add_index "sections", ["position"], name: "index_sections_on_position"
  add_index "sections", ["proposal_id"], name: "index_sections_on_proposal_id"

  create_table "sentences", force: true do |t|
    t.integer  "paragraph_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  add_index "sentences", ["paragraph_id"], name: "index_sentences_on_paragraph_id"
  add_index "sentences", ["position"], name: "index_sentences_on_position"

  create_table "votes", force: true do |t|
    t.integer  "participant_id"
    t.integer  "proposal_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["participant_id"], name: "index_votes_on_participant_id"
  add_index "votes", ["proposal_id"], name: "index_votes_on_proposal_id"
  add_index "votes", ["value"], name: "index_votes_on_value"

end

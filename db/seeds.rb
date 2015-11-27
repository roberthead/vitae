# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

module Db
  class Seeder
    SEEDS_PATH = "#{Rails.root}/db/seeds/"

    def seed!
      Dir[File.join(SEEDS_PATH, "*.rb")].sort.each do |f|
        require f
        class_from_file(f).seed!
      end
    end

    private

    def class_from_file(filename)
      Db::Seeder.const_get(ordinal_stripped(File.basename(filename, '.rb')).camelize)
    end

    def ordinal_stripped(filename)
      filename.gsub(/^[^a-z]*/, '')
    end
  end
end

Db::Seeder.new.seed!

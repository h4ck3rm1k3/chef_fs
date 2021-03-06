require 'chef_fs/file_system/base_fs_object'

class ChefFS
  module FileSystem
    class NonexistentFSObject < BaseFSObject
      def initialize(name, parent)
        super
      end

      def exists?
        false
      end

      def child(name)
        NonexistentFSObject.new(name, self)
      end
    end
  end
end

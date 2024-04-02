class Icon < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, image_path: 'rizay.png' },
    { id: 3, name: '高校生' },
    { id: 4, name: '大学生' },
    { id: 5, name: '社会人' },
  ]

  include ActiveHash::Associations
  has_many :users

end

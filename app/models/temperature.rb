class Temperature < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '極寒' },
    { id: 2, name: '寒い' },
    { id: 3, name: '少し寒い' },
    { id: 4, name: '快適' },
    { id: 5, name: '少し暑い' },
    { id: 6, name: '暑い' },
    { id: 7, name: '極暑' }
  ]
end
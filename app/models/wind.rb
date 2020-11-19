class Wind < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '無風' },
    { id: 2, name: 'ほぼ吹いていない' },
    { id: 3, name: '少し吹いている' },
    { id: 0, name: 'やや強い' },
    { id: 0, name: '強い' },
    { id: 0, name: '非常に強い' },
    { id: 0, name: '猛烈' }
  ]
end
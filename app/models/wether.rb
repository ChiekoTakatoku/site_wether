class Wether < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '快晴' },
    { id: 2, name: '晴' },
    { id: 3, name: '曇り' },
    { id: 4, name: 'にわか雨' },
    { id: 5, name: '霧雨' },
    { id: 6, name: '雨' },
    { id: 7, name: '大雨' },
    { id: 8, name: '雷雨' },
    { id: 9, name: '雷' },
    { id: 10, name: '霧' },
    { id: 11, name: 'みぞれ' },
    { id: 12, name: '雪' },
    { id: 13, name: '大雪' },
    { id: 14, name: 'あられ' },
    { id: 15, name: 'ひょう' }
  ]
end
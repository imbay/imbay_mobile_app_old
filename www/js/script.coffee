imbay = new Framework7({
  material: true
})

imbay.init()

$$ = Dom7

min = new Date(1900, 0, 1)
max = new Date(2012, 11, 31)

birthday = imbay.calendar({
    minDate: min,
    maxDate: max,
    value: [new Date(1996, 10, 21)],
    input: '#calendar-default',
    dateFormat: 'dd MM yyyy',
    weekHeader: false,
    direction: 'vertical',
    scrollToInput: true,
})

mainView = imbay.addView('.view-main', {
  domCache: true
})

imbay.onPageAfterAnimation 'sign_in', (page)->
  console.log 'Initialized page: '+page.name

imbay.onPageAfterAnimation 'sign_up', (page)->
  console.log 'Initialized page: '+page.name

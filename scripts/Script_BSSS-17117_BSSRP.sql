call setUssSmsTemplateKey('rp.apiType.connect.tp.success', 'Вы можете продолжать общение! Доверительный платёж уже на Вашем балансе. Сумма платежа {PRPVAL}{.case{.compare {CUR}}{.when R}{.then руб}{.else $}} и плата за услугу {FEEVAL} спишутся при пополнении счёта или автоматически через {PRPDAYS} дн. ({OUTDATE}). Вы можете пополнить баланс быстро и без комиссии через приложение "Мой Билайн" www.beeline.ru/dl', 'ru_RU');
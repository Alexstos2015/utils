call setUssLocalizationKey('validation.rule.transaction.subscriber.second.pp.not.available', 'Secondary TP is not available');
call setUssConfigurationKey('service.seсond.promisedPayment.baseFeatureName.a', 'TPLUXA', 'Имя базового фичера TPLUXA услуги "Второй доверительный платёж"');
call setUssConfigurationKey('service.seсond.promisedPayment.baseFeatureName.t', 'TPLUXT', 'Имя базового фичера TPLUXT услуги "Второй доверительный платёж"');
call setUssConfigurationKey('rp.trusted.payment.from.USSS', 'false', 'Получать данные по доверительному платежу из USSS при недоступности CM');
commit;
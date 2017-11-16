call setUssConfigurationKey('service.second.promisedPayment.socName', 'TP2_2', 'Имя сока услуги "Второй доверительный платёж"');
call setUssConfigurationKey('oldLogicTrustedPayment.API.market', 'BUR,KSK,BAR,OMS,IVN,UFA,EKT,KRG,VOL,KRD,KIR,EST,VLA,ORL,SRN,GAL,IRK,VNG,KZN,SMF,VIP,YAK,KZL,NNG,STR,ABK,MGN,TUL,BLG,KUR,MUR,RZN,STV,EXT,IGK,NOR,YRL,MGD,TUM,USH,VRN,HMS,SAM,AST,SPB,BRN,SRT,CHT,MAH,RND,TMB,CHL,DTI,VLD,BGK,PSK,CHB,ANR,STK,VLK,KLG,NTG,NZR,KCH,BIR,ORB,ULN,SKH,TOL,NAL,TVR,IKO,KRL,LPK,ARH,KSM,PPK,KMR,YAM,GRZ,TMS,PRM,SCH,KRS,NSK,VLG,PNZ,SML', 'Список (через запятую) маркет кодов для выбора способа опеделения параметров "Доверительного платежа"');

-- UCP
call setUssConfigurationKey('ucp.endpoint.auth.login', '', 'Логин для аутентификации в UCP');
call setUssConfigurationKey('ucp.endpoint.auth.password', '', 'Пароль для аутентификации в UCP');
call setUssConfigurationKey('ucp.endpoint.auth.serviceId', '', 'Идентификатор системы пользователя для аутентификации в UCP');
call setUssConfigurationKey('ucp.timeout.connect', '1000', 'Таймаут соединения сервиса UCP для получения информации о доверительном платеже');
call setUssConfigurationKey('ucp.timeout', '30000', 'Таймаут на получение данных о доверительном платеже от UCP сервиса');
call setUssConfigurationKey('ucp.endpoint.serviceInfo.key.auth', 'ucp:bautрh', 'Ключ UCP-сервиса serviceInfo для аутентификации');
call setUssConfigurationKey('ucp.endpoint.serviceInfo.key.customerPromisedPayments', 'ucp.ucp_query', 'Ключ UCP-сервиса serviceInfo для получения информации о доверительных платежах');
call setUssConfigurationKey('ucp.endpoint.serviceInfo.url', '', 'URL сервиса serviceInfo в UCP');
commit;
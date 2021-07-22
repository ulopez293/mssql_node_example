
 SELECT `PrestamosEmergentes`.`Tipo`, `PCPBancos`.`Descripción`, `PrestamosEmergentes`.`ImportePtmo`, `PrestamosEmergentes`.`Bonificacion`, `PrestamosEmergentes`.`InteresPtmo`, `PrestamosEmergentes`.`OrdenDscto`, `PrestamosEmergentes`.`Líquido`, `PCPBancos`.`CuentaCon`, `PCPBancos`.`SubCuentaCon`, `PCPBancos`.`SubSubCuentaCon`, `PrestamosEmergentes`.`FechaGenera`, `PrestamosEmergentes`.`Cheque`, `PrestamosEmergentes`.`TipoPrestamo`, `InformacionCapitalInteres`.`Capital`, `InformacionCapitalInteres`.`Interes`, `PrestamosEmergentes`.`PrimaRenov`, `PrestamosEmergentes`.`InteresDiario`
 FROM   (`IPEBD`.`dbo`.`PrestamosEmergentes` `PrestamosEmergentes` INNER JOIN `IPEBD`.`dbo`.`PCPBancos` `PCPBancos` ON `PrestamosEmergentes`.`Banco`=`PCPBancos`.`Banco`) INNER JOIN `IPEBD`.`dbo`.`InformacionCapitalInteres` `InformacionCapitalInteres` ON (`PrestamosEmergentes`.`ActPen`=`InformacionCapitalInteres`.`Actpen`) AND (`PrestamosEmergentes`.`Número`=`InformacionCapitalInteres`.`Número`)

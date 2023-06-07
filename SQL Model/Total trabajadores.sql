SELECT AVG(DATEDIFF(CURDATE(), a.`Fecha nacimiento`)/365) AS EdadMedia, COUNT(*) AS TotalTrabajadores
FROM final_project.actual a
JOIN final_project.base b ON a.`ID` = b.`ID`
WHERE b.`FECHA ALTA` IS NOT NULL
  AND b.`FECHA BAJA` IS NULL;
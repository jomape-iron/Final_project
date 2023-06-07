SELECT
    b.CATEGORIA,
    COUNT(*) AS `Número de trabajadores activos`,
    (
        SELECT COUNT(*)
        FROM final_project.base
        WHERE `FECHA ALTA` IS NOT NULL AND `FECHA BAJA` IS NOT NULL AND CATEGORIA = b.CATEGORIA
    ) AS `Número de trabajadores dados de baja`,
    (
        (
            SELECT COUNT(*)
            FROM final_project.base
            WHERE `FECHA ALTA` IS NOT NULL AND `FECHA BAJA` IS NOT NULL AND CATEGORIA = b.CATEGORIA
        ) / COUNT(*)
    ) * 100 AS `Porcentaje de rotación`,
    (
        COUNT(*) / (
            SELECT COUNT(*)
            FROM final_project.base
            WHERE `FECHA ALTA` IS NOT NULL AND `FECHA BAJA` IS NULL
        ) * 100
    ) AS `Porcentaje de trabajadores/as`
FROM final_project.base b
WHERE b.`FECHA ALTA` IS NOT NULL AND b.`FECHA BAJA` IS NULL
GROUP BY b.CATEGORIA;
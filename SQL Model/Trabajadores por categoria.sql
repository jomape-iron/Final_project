SELECT
    b.CATEGORIA,
    COUNT(*) AS `Número de trabajadores`,
    COUNT(*) * 100 / (
        SELECT COUNT(*)
        FROM final_project.base
        WHERE `FECHA ALTA` IS NOT NULL AND `FECHA BAJA` IS NULL
    ) AS `Porcentaje`
FROM final_project.base b
WHERE b.`FECHA ALTA` IS NOT NULL AND b.`FECHA BAJA` IS NULL
GROUP BY b.CATEGORIA;
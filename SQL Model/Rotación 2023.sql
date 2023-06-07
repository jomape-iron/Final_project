SELECT
    b.CATEGORIA,
    (
        SELECT COUNT(*)
        FROM final_project.base
        WHERE YEAR(`FECHA ALTA`) <= 2023 AND (`FECHA BAJA` IS NULL OR YEAR(`FECHA BAJA`) > 2023) AND CATEGORIA = b.CATEGORIA
    ) AS `Número de trabajadores activos`,
    (
        SELECT COUNT(*)
        FROM final_project.base
        WHERE YEAR(`FECHA ALTA`) = 2023 AND YEAR(`FECHA BAJA`) = 2023 AND CATEGORIA = b.CATEGORIA
    ) AS `Número de trabajadores dados de baja`,
    (
        (
            SELECT COUNT(*)
            FROM final_project.base
            WHERE YEAR(`FECHA ALTA`) <= 2023 AND (`FECHA BAJA` IS NULL OR YEAR(`FECHA BAJA`) > 2023) AND CATEGORIA = b.CATEGORIA
        ) / (
            SELECT COUNT(*)
            FROM final_project.base
            WHERE YEAR(`FECHA ALTA`) <= 2023 AND (`FECHA BAJA` IS NULL OR YEAR(`FECHA BAJA`) > 2023)
        ) * 100
    ) AS `Porcentaje de trabajadores`,
    (
        (
            SELECT COUNT(*)
            FROM final_project.base
            WHERE YEAR(`FECHA ALTA`) = 2023 AND YEAR(`FECHA BAJA`) = 2023 AND CATEGORIA = b.CATEGORIA
        ) / (
            SELECT COUNT(*)
            FROM final_project.base
            WHERE YEAR(`FECHA ALTA`) <= 2023 AND (`FECHA BAJA` IS NULL OR YEAR(`FECHA BAJA`) > 2023)
        ) * 100
    ) AS `Porcentaje de rotación`
FROM final_project.base b
WHERE YEAR(b.`FECHA ALTA`) <= 2023 AND (b.`FECHA BAJA` IS NULL OR YEAR(b.`FECHA BAJA`) > 2023)
GROUP BY b.CATEGORIA;
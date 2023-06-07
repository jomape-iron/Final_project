SELECT
    a.Sexo,
    COUNT(*) AS `Número de trabajadores`,
    COUNT(*) * 100 / (
        SELECT COUNT(*)
        FROM final_project.actual aa
        INNER JOIN final_project.base bb ON aa.ID = bb.ID
        WHERE bb.`FECHA ALTA` IS NOT NULL AND bb.`FECHA BAJA` IS NULL
    ) AS `Porcentaje`
FROM final_project.actual a
INNER JOIN final_project.base b ON a.ID = b.ID
WHERE b.`FECHA ALTA` IS NOT NULL AND b.`FECHA BAJA` IS NULL
GROUP BY a.Sexo;
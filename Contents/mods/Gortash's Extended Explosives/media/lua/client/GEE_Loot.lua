local function addLoot()
    local dist = ProceduralDistributions and ProceduralDistributions.list

    if not dist then
        print("[HeavyBombs] ProceduralDistributions not found, skipping loot.")
        return
    end

    if dist["PoliceStationLockers"] then
        table.insert(dist["PoliceStationLockers"].items, "HeavyBombs.MediumPipeBomb")
        table.insert(dist["PoliceStationLockers"].items, 4)
    end

    if dist["MilitaryStorageLight"] then
        table.insert(dist["MilitaryStorageLight"].items, "HeavyBombs.MediumPipeBomb")
        table.insert(dist["MilitaryStorageLight"].items, 6)
        table.insert(dist["MilitaryStorageLight"].items, "HeavyBombs.HeavyPipeBomb")
        table.insert(dist["MilitaryStorageLight"].items, 4)
        table.insert(dist["MilitaryStorageLight"].items, "HeavyBombs.UltraPipeBomb")
        table.insert(dist["MilitaryStorageLight"].items, 2)
    end

    print("[HeavyBombs] Loot registered.")
end

Events.OnDistributionMerge.Add(addLoot)
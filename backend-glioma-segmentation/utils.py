def read_ids_from_txt(path):
    with open(path, 'r') as f:
        return [line.strip() for line in f.readlines()]

def generar_mapa_ids_normalizados(lista_ids):
    id_set = sorted(set(pid.split("-000")[0] for pid in lista_ids))
    return {pid: i / (len(id_set) - 1) for i, pid in enumerate(id_set)} if len(id_set) > 1 else {id_set[0]: 0.0}

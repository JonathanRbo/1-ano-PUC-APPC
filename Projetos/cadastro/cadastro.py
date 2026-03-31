from datetime import datetime

funcionarios = []
solicitacoes = []

def cadastrar_funcionario():
    nome = input("Nome: ")
    departamento = input("Departamento: ")
    email = input("Email: ")
    funcionario = {
        "id": len(funcionarios) + 1,
        "nome": nome,
        "departamento": departamento,
        "email": email
    }
    funcionarios.append(funcionario)
    print(f"\nFuncionario '{nome}' cadastrado! (ID: {funcionario['id']})\n")


def listar_funcionarios():
    if not funcionarios:
        print("\nNenhum funcionario cadastrado.\n")
        return
    print("\n--- Funcionarios ---")
    for f in funcionarios:
        print(f"  ID: {f['id']} | Nome: {f['nome']} | Depto: {f['departamento']} | Email: {f['email']}")
    print()


def excluir_funcionario():
    listar_funcionarios()
    if not funcionarios:
        return
    id_func = int(input("ID para excluir: "))
    for i, f in enumerate(funcionarios):
        if f["id"] == id_func:
            funcionarios.pop(i)
            print("Funcionario excluido.\n")
            return
    print("ID nao encontrado.\n")


def registrar_solicitacao():
    if not funcionarios:
        print("\nCadastre um funcionario antes de registrar solicitacoes.\n")
        return
    listar_funcionarios()
    id_func = int(input("ID do funcionario: "))
    encontrado = False
    for f in funcionarios:
        if f["id"] == id_func:
            encontrado = True
            break
    if not encontrado:
        print("Funcionario nao encontrado.\n")
        return
    descricao = input("Descricao da solicitacao: ")
    prioridade = input("Prioridade (Baixa/Media/Alta): ")
    urgencia = input("Urgencia (Baixa/Media/Alta): ")
    solicitacao = {
        "id": len(solicitacoes) + 1,
        "funcionario_id": id_func,
        "descricao": descricao,
        "prioridade": prioridade,
        "urgencia": urgencia,
        "status": "Aberta",
        "data_abertura": datetime.now().strftime("%d/%m/%Y %H:%M")
    }
    solicitacoes.append(solicitacao)
    print(f"\nSolicitacao registrada! (ID: {solicitacao['id']})\n")


def consultar_solicitacoes():
    if not solicitacoes:
        print("\nNenhuma solicitacao registrada.\n")
        return
    print("\n--- Solicitacoes ---")
    for s in solicitacoes:
        nome_func = "Desconhecido"
        for f in funcionarios:
            if f["id"] == s["funcionario_id"]:
                nome_func = f["nome"]
                break
        print(f"  ID: {s['id']} | Funcionario: {nome_func}")
        print(f"    Descricao: {s['descricao']}")
        print(f"    Prioridade: {s['prioridade']} | Urgencia: {s['urgencia']} | Status: {s['status']}")
        print(f"    Abertura: {s['data_abertura']}")
        print()


def menu():
    while True:
        print("=== SISTEMA DE CADASTRO ===")
        print("1 - Cadastrar funcionario")
        print("2 - Listar funcionarios")
        print("3 - Excluir funcionario")
        print("4 - Registrar solicitacao")
        print("5 - Consultar solicitacoes")
        print("0 - Sair")
        opcao = input("Escolha: ")

        if opcao == "1":
            cadastrar_funcionario()
        elif opcao == "2":
            listar_funcionarios()
        elif opcao == "3":
            excluir_funcionario()
        elif opcao == "4":
            registrar_solicitacao()
        elif opcao == "5":
            consultar_solicitacoes()
        elif opcao == "0":
            print("Saindo...")
            break
        else:
            print("Opcao invalida.\n")


menu()

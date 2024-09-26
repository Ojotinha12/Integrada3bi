import tkinter as tk
from tkinter import messagebox, simpledialog, ttk
from PIL import Image, ImageTk
import mysql.connector


def conectar_bd():
    try:
        conexao = mysql.connector.connect(
            host="localhost",
            user="admin",
            password="123",  
            database="sistema_areas_protegidas"
        )
        return conexao
    except mysql.connector.Error as err:
        messagebox.showerror("Erro", f"Erro na conexão com o banco de dados: {err}")
        return None

# Tela de Login
def login():
    def verificar_login():
        usuario = entry_usuario.get()
        senha = entry_senha.get()

        conexao = conectar_bd()
        if conexao:
            cursor = conexao.cursor()
            query = "SELECT * FROM usuarios WHERE usuario=%s AND senha=%s"
            cursor.execute(query, (usuario, senha))
            resultado = cursor.fetchone()
            if resultado:
                messagebox.showinfo("Sucesso", "Login bem-sucedido!")
                janela_login.destroy()
                menu_principal()
            else:
                messagebox.showerror("Erro", "Usuário ou senha incorretos.")
            cursor.close()
            conexao.close()

    janela_login = tk.Tk()
    janela_login.title("Login")
    janela_login.geometry("400x300")

    img = Image.open("logotipo.png")  
    img = img.resize((150, 150))
    img = ImageTk.PhotoImage(img)
    logo_label = tk.Label(janela_login, image=img)
    logo_label.image = img  
    logo_label.pack(pady=20)

    label_usuario = tk.Label(janela_login, text="Usuário:")
    label_usuario.pack()
    entry_usuario = tk.Entry(janela_login)
    entry_usuario.pack()

    label_senha = tk.Label(janela_login, text="Senha:")
    label_senha.pack()
    entry_senha = tk.Entry(janela_login, show="*")
    entry_senha.pack()

    btn_login = tk.Button(janela_login, text="Login", command=verificar_login, bg="green", fg="white")
    btn_login.pack(pady=10)

    janela_login.mainloop()

# Tela de Cadastro de Usuários
def cadastrar_usuario():
    def salvar_usuario():
        usuario = entry_usuario.get()
        senha = entry_senha.get()

        conexao = conectar_bd()
        if conexao:
            cursor = conexao.cursor()
            query = "INSERT INTO usuarios (usuario, senha) VALUES (%s, %s)"
            cursor.execute(query, (usuario, senha))
            conexao.commit()
            messagebox.showinfo("Sucesso", "Usuário cadastrado com sucesso!")
            cursor.close()
            conexao.close()
            janela_cadastro_usuario.destroy()

    janela_cadastro_usuario = tk.Toplevel()
    janela_cadastro_usuario.title("Cadastrar Usuário")
    janela_cadastro_usuario.geometry("300x200")

    label_usuario = tk.Label(janela_cadastro_usuario, text="Nome de Usuário:")
    label_usuario.grid(row=0, column=0)
    entry_usuario = tk.Entry(janela_cadastro_usuario)
    entry_usuario.grid(row=0, column=1)

    label_senha = tk.Label(janela_cadastro_usuario, text="Senha:")
    label_senha.grid(row=1, column=0)
    entry_senha = tk.Entry(janela_cadastro_usuario, show="*")
    entry_senha.grid(row=1, column=1)

    btn_salvar_usuario = tk.Button(janela_cadastro_usuario, text="Salvar Usuário", command=salvar_usuario)
    btn_salvar_usuario.grid(row=2, columnspan=2)


def menu_principal():
    janela_menu = tk.Tk()
    janela_menu.title("Sistema de Gestão de Áreas Protegidas")
    janela_menu.geometry("400x400")

   
    frame = tk.Frame(janela_menu)
    frame.pack(fill=tk.BOTH, expand=True)

    canvas = tk.Canvas(frame)
    scrollbar = tk.Scrollbar(frame, orient="vertical", command=canvas.yview)
    scrollable_frame = tk.Frame(canvas)

    scrollable_frame.bind(
        "<Configure>",
        lambda e: canvas.configure(scrollregion=canvas.bbox("all"))
    )

    canvas.create_window((0, 0), window=scrollable_frame, anchor="nw")

    
    scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
    canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

    img = Image.open("logotipo.png")  
    img = img.resize((150, 150))
    img = ImageTk.PhotoImage(img)
    logo_label = tk.Label(scrollable_frame, image=img)
    logo_label.image = img  
    logo_label.pack(pady=10)

    
    btn_cadastrar_usuario = tk.Button(scrollable_frame, text="Cadastrar Usuário", command=cadastrar_usuario, bg="blue", fg="white")
    btn_cadastrar_usuario.pack(pady=10, padx=50)  

    btn_cadastrar_area = tk.Button(scrollable_frame, text="Cadastrar Área Protegida", command=cadastrar_area, bg="blue", fg="white")
    btn_cadastrar_area.pack(pady=10, padx=50)

    btn_visualizar_areas = tk.Button(scrollable_frame, text="Visualizar Áreas Protegidas", command=visualizar_areas, bg="blue", fg="white")
    btn_visualizar_areas.pack(pady=10, padx=50)

    btn_monitoramento = tk.Button(scrollable_frame, text="Monitoramento de Espécies", command=monitorar_especies, bg="blue", fg="white")
    btn_monitoramento.pack(pady=10, padx=50)

    btn_relatorios = tk.Button(scrollable_frame, text="Gerar Relatórios", command=gerar_relatorio, bg="blue", fg="white")
    btn_relatorios.pack(pady=10, padx=50)

    btn_configuracoes = tk.Button(scrollable_frame, text="Configurações", command=configuracoes, bg="blue", fg="white")
    btn_configuracoes.pack(pady=10, padx=50)

    btn_sobre_nos = tk.Button(scrollable_frame, text="Sobre Nós", command=sobre_nos, bg="blue", fg="white")
    btn_sobre_nos.pack(pady=10, padx=50)

    janela_menu.mainloop()

# Cadastro de Áreas Protegidas
def cadastrar_area():
    def salvar_area():
        nome_area = entry_nome.get()
        localizacao_area = entry_localizacao.get()
        tamanho_area = entry_tamanho.get()

        conexao = conectar_bd()
        if conexao:
            cursor = conexao.cursor()
            query = "INSERT INTO areas_protegidas (nome, localizacao, tamanho) VALUES (%s, %s, %s)"
            cursor.execute(query, (nome_area, localizacao_area, tamanho_area))
            conexao.commit()
            messagebox.showinfo("Sucesso", "Área protegida cadastrada com sucesso!")
            cursor.close()
            conexao.close()
            janela_cadastro.destroy()

    janela_cadastro = tk.Toplevel()
    janela_cadastro.title("Cadastrar Área Protegida")
    janela_cadastro.geometry("400x300")

    label_nome = tk.Label(janela_cadastro, text="Nome da Área:")
    label_nome.grid(row=0, column=0)
    entry_nome = tk.Entry(janela_cadastro)
    entry_nome.grid(row=0, column=1)

    label_localizacao = tk.Label(janela_cadastro, text="Localização:")
    label_localizacao.grid(row=1, column=0)
    entry_localizacao = tk.Entry(janela_cadastro)
    entry_localizacao.grid(row=1, column=1)

    label_tamanho = tk.Label(janela_cadastro, text="Tamanho (hectares):")
    label_tamanho.grid(row=2, column=0)
    entry_tamanho = tk.Entry(janela_cadastro)
    entry_tamanho.grid(row=2, column=1)

    btn_salvar = tk.Button(janela_cadastro, text="Salvar", command=salvar_area, bg="green", fg="white")
    btn_salvar.grid(row=3, columnspan=2)

# Visualização de Áreas Protegidas
def visualizar_areas():
    janela_visualizacao = tk.Toplevel()
    janela_visualizacao.title("Áreas Protegidas")
    janela_visualizacao.geometry("400x400")

    
    frame = tk.Frame(janela_visualizacao)
    frame.pack(fill=tk.BOTH, expand=True)

    canvas = tk.Canvas(frame)
    scrollbar = tk.Scrollbar(frame, orient="vertical", command=canvas.yview)
    scrollable_frame = tk.Frame(canvas)

    scrollable_frame.bind(
        "<Configure>",
        lambda e: canvas.configure(scrollregion=canvas.bbox("all"))
    )

    canvas.create_window((0, 0), window=scrollable_frame, anchor="nw")

    
    scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
    canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

    
    tk.Label(scrollable_frame, text="Áreas Protegidas", font=("Arial", 16)).pack(pady=10)

    conexao = conectar_bd()
    if conexao:
        cursor = conexao.cursor()
        cursor.execute("SELECT * FROM areas_protegidas")
        areas = cursor.fetchall()
        
        for index, area in enumerate(areas):
            area_frame = tk.Frame(scrollable_frame)
            area_frame.pack(pady=5, padx=20, fill=tk.X)

            tk.Label(area_frame, text=f"Área {index + 1}:").pack(anchor="w")
            tk.Label(area_frame, text=f"Nome: {area[1]}").pack(anchor="w")
            tk.Label(area_frame, text=f"Localização: {area[2]}").pack(anchor="w")
            tk.Label(area_frame, text=f"Tamanho: {area[3]} hectares").pack(anchor="w")
            tk.Label(area_frame, text="").pack()  # Espaçamento

        cursor.close()
        conexao.close()

def monitorar_especies():
    def salvar_especie():
        nome_especie = entry_nome_especie.get()
        status = entry_status.get()

        conexao = conectar_bd()
        if conexao:
            cursor = conexao.cursor()
            query = "INSERT INTO especies_monitoradas (nome, status) VALUES (%s, %s)"
            cursor.execute(query, (nome_especie, status))
            conexao.commit()
            messagebox.showinfo("Sucesso", "Espécie monitorada com sucesso!")
            cursor.close()
            conexao.close()
            atualizar_especies()
            entry_nome_especie.delete(0, tk.END)
            entry_status.delete(0, tk.END)

    def atualizar_especies():
        
        for widget in frame_especies.winfo_children():
            widget.destroy()

        conexao = conectar_bd()
        if conexao:
            cursor = conexao.cursor()
            cursor.execute("SELECT * FROM especies_monitoradas")
            especies = cursor.fetchall()

            for especie in especies:
                tk.Label(frame_especies, text=f"Nome: {especie[1]}, Status: {especie[2]}").pack(anchor='w')

            cursor.close()
            conexao.close()

    janela_monitoramento = tk.Toplevel()
    janela_monitoramento.title("Monitoramento de Espécies")
    janela_monitoramento.geometry("400x400")

    
    frame_especies = tk.Frame(janela_monitoramento)
    frame_especies.pack(fill=tk.BOTH, expand=True)

    
    canvas = tk.Canvas(frame_especies)
    scrollbar = tk.Scrollbar(frame_especies, orient="vertical", command=canvas.yview)
    scrollable_frame = tk.Frame(canvas)

    scrollable_frame.bind(
        "<Configure>",
        lambda e: canvas.configure(scrollregion=canvas.bbox("all"))
    )

    canvas.create_window((0, 0), window=scrollable_frame, anchor="nw")

    
    scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
    canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)

    
    label_nome_especie = tk.Label(janela_monitoramento, text="Nome da Espécie:")
    label_nome_especie.pack(pady=5)
    entry_nome_especie = tk.Entry(janela_monitoramento)
    entry_nome_especie.pack(pady=5)

    label_status = tk.Label(janela_monitoramento, text="Status:")
    label_status.pack(pady=5)
    entry_status = tk.Entry(janela_monitoramento)
    entry_status.pack(pady=5)

    btn_salvar_especie = tk.Button(janela_monitoramento, text="Adicionar Espécie", command=salvar_especie, bg="green", fg="white")
    btn_salvar_especie.pack(pady=10)

    
    atualizar_especies()

# Tela de Relatórios
def gerar_relatorio():
    janela_relatorio = tk.Toplevel()
    janela_relatorio.title("Relatórios")
    janela_relatorio.geometry("600x600")

    
    label_filtro = tk.Label(janela_relatorio, text="Filtros:")
    label_filtro.pack(pady=10)

    
    label_localizacao = tk.Label(janela_relatorio, text="Localização:")
    label_localizacao.pack(pady=5)
    entry_localizacao = tk.Entry(janela_relatorio)
    entry_localizacao.pack(pady=5)

   
    label_tamanho_minimo = tk.Label(janela_relatorio, text="Tamanho Mínimo (hectares):")
    label_tamanho_minimo.pack(pady=5)
    entry_tamanho_minimo = tk.Entry(janela_relatorio)
    entry_tamanho_minimo.pack(pady=5)

    
    label_status_protecao = tk.Label(janela_relatorio, text="Status de Proteção:")
    label_status_protecao.pack(pady=5)
    entry_status_protecao = tk.Entry(janela_relatorio)
    entry_status_protecao.pack(pady=5)

    
    def gerar_relatorio_areas():
        localizacao = entry_localizacao.get()
        tamanho_minimo = entry_tamanho_minimo.get()
        status_protecao = entry_status_protecao.get()

        conexao = conectar_bd()
        if conexao:
            cursor = conexao.cursor()
            query = "SELECT * FROM areas_protegidas WHERE 1=1"
            params = []

            if localizacao:
                query += " AND localizacao LIKE %s"
                params.append(f"%{localizacao}%")
            if tamanho_minimo:
                query += " AND tamanho >= %s"
                params.append(tamanho_minimo)
            if status_protecao:
                query += " AND status_protecao LIKE %s"
                params.append(f"%{status_protecao}%")

            cursor.execute(query, params)
            areas = cursor.fetchall()

            relatorio_text = "Relatório de Áreas Protegidas:\n\n"
            for area in areas:
                relatorio_text += f"Nome: {area[1]}, Localização: {area[2]}, Tamanho: {area[3]} hectares, Status: {area[4]}\n"

            cursor.close()
            conexao.close()

            text_relatorio.delete(1.0, tk.END)
            text_relatorio.insert(tk.END, relatorio_text)

    btn_gerar_relatorio = tk.Button(janela_relatorio, text="Gerar Relatório", command=gerar_relatorio_areas, bg="blue", fg="white")
    btn_gerar_relatorio.pack(pady=20)

    
    text_relatorio = tk.Text(janela_relatorio, height=20)
    text_relatorio.pack(expand=True, fill=tk.BOTH, padx=10, pady=10)

   
    def exportar_relatorio():
        relatorio = text_relatorio.get(1.0, tk.END)
        with open("relatorio_areas_protegidas.txt", "w") as file:
            file.write(relatorio)
        messagebox.showinfo("Exportar Relatório", "Relatório exportado com sucesso!")

    btn_exportar = tk.Button(janela_relatorio, text="Exportar Relatório", command=exportar_relatorio, bg="green", fg="white")
    btn_exportar.pack(pady=10)

    
    btn_fechar = tk.Button(janela_relatorio, text="Fechar", command=janela_relatorio.destroy, bg="red", fg="white")
    btn_fechar.pack(pady=10)

# Tela de Configurações
def configuracoes():
    janela_configuracoes = tk.Toplevel()
    janela_configuracoes.title("Configurações")
    janela_configuracoes.geometry("400x300")

    label_instrucoes = tk.Label(janela_configuracoes, text="Configurações do Sistema:", font=("Arial", 12))
    label_instrucoes.pack(pady=10)

    label_opcao = tk.Label(janela_configuracoes, text="Aqui você pode ajustar as configurações do sistema.")
    label_opcao.pack(pady=10)

    def alterar_senha():
        nova_senha = simpledialog.askstring("Alterar Senha", "Digite sua nova senha:")
        if nova_senha:
            
            messagebox.showinfo("Sucesso", "Senha alterada com sucesso!")
    
    btn_alterar_senha = tk.Button(janela_configuracoes, text="Alterar Senha", command=alterar_senha, bg="orange", fg="white")
    btn_alterar_senha.pack(pady=10)

    btn_fechar = tk.Button(janela_configuracoes, text="Fechar", command=janela_configuracoes.destroy, bg="red", fg="white")
    btn_fechar.pack(pady=10)

# Tela Sobre Nós
def sobre_nos():
    janela_sobre_nos = tk.Toplevel()
    janela_sobre_nos.title("Sobre Nós")
    janela_sobre_nos.geometry("400x400")

    img = Image.open("logotipo.png")  
    img = img.resize((150, 150))
    img = ImageTk.PhotoImage(img)
    logo_label = tk.Label(janela_sobre_nos, image=img)
    logo_label.image = img  
    logo_label.pack(pady=10)

    descricao = ("A V.J Ambientalistas é uma organização dedicada à proteção e conservação dos "
                 "recursos naturais e da biodiversidade. Nossa missão é promover a sustentabilidade, "
                 "restaurar ecossistemas e educar a comunidade sobre a importância da preservação "
                 "ambiental. Trabalhamos em parceria com órgãos governamentais, ONGs e a sociedade "
                 "civil para garantir um futuro mais verde e saudável para as próximas gerações.")
    
    label_descricao = tk.Label(janela_sobre_nos, text=descricao, wraplength=350, justify="center")
    label_descricao.pack(pady=20)


login()

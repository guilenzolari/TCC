import SwiftUI
import Charts

struct TemasDidaticosView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        NavigationView {
            VStack {
                List{
                    Section {
                        BotaoTemasDidaticos(destino: FuncionamentoDoProcessoView(),
                                            imagem: "gearshape",
                                            texto: "Funcionamento do Processo",
                                            cor: .gray)
                        BotaoTemasDidaticos(destino: UsosDaAguaTratadaView(),
                                            imagem: "spigot",
                                            texto: "Usos da Água Tratada",
                                            cor: .orange)
                        BotaoTemasDidaticos(destino: ProblemaDaAguaNoMundoView(),
                                            imagem: "drop",
                                            texto: "Problema da Água no Mundo",
                                            cor: .blue)
                        BotaoTemasDidaticos(destino: IndicePluviometricoView(),
                                            imagem: "cloud.drizzle",
                                            texto: "Índice pluviométrico",
                                            cor: .indigo)
                        BotaoTemasDidaticos(destino: MateriaisDaOperacao(),
                                            imagem: "shippingbox",
                                            texto: "Materiais da Operação",
                                            cor: .brown)
                        BotaoTemasDidaticos(destino: TrocaDoCloradorView(),
                                            imagem: "arrow.circlepath",
                                            texto: "Troca do Clorador",
                                            cor: .black)
                        BotaoTemasDidaticos(destino: ComoCalcularAreaCaptacaoView(),
                                            imagem: "rectangle",
                                            texto: "Como calcular a área de captação",
                                            cor: .red)
                        BotaoTemasDidaticos(destino: LimitacoesDoProcessoView(),
                                            imagem: "exclamationmark.triangle",
                                            texto: "Limitações do projeto",
                                            cor: Color.yellow)
                    }
                }
            }.navigationTitle(Text("Temas Didáticos"))
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

import SwiftUI

struct SwiftList: View {
    @State private var listItem = ["Apple", "Orange", "Banana", "Peach"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(listItem, id: \.self) { item in
                    Text(item)
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationTitle("Items")
            .toolbar {
                // Left side
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add") {
                        listItem.append("coconut")
                    }
                }

                // Right side
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
    }

    func delete(at offsets: IndexSet) {
        listItem.remove(atOffsets: offsets)
    }

    func move(from source: IndexSet, to destination: Int) {
        listItem.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    SwiftList()
}

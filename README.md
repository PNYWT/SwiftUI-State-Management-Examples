# SwiftUI State Management Examples

คลังตัวอย่างโค้ดสำหรับซีรีส์บทความ **Back to Basic SwiftUI State Management**

repo นี้ตั้งใจทำไว้เป็นตัวอย่างประกอบบทความ โดยจะค่อย ๆ เพิ่มหัวข้อในแต่ละตอนของซีรีส์ เพื่อให้เปิดอ่านบทความควบคู่กับโค้ดจริงในโปรเจกต์ได้ง่ายขึ้น

## บทความในซีรีส์

- [Back to Basic SwiftUI State Management ที่ควรรู้ Part 1](https://medium.com/@punyawat.codercamp/back-to-basic-swiftui-state-management-%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3%E0%B8%A3%E0%B8%B9%E0%B9%89-part-1-5ee9492c041b)
- [Back to Basic SwiftUI State Management ที่ควรรู้ Part 2](https://medium.com/@punyawat.codercamp/back-to-basic-swiftui-state-management-%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%84%E0%B8%A7%E0%B8%A3%E0%B8%A3%E0%B8%B9%E0%B9%89-part-2-b7cb62e0fc98)
- Observation framework (iOS 17+) จะอยู่ใน PART 3

## เป้าหมายของ Repo

- ทำตัวอย่างให้เล็ก อ่านง่าย และหยิบไปทดลองต่อได้ทันที
- แยกอธิบายทีละแนวคิด เพื่อให้เห็นบทบาทของแต่ละ property wrapper ชัดเจน
- ช่วยให้เข้าใจ data flow ใน SwiftUI ได้ง่ายขึ้น
- ใช้เป็นพื้นที่ต่อยอดจากพื้นฐานไปสู่แนวทางที่ลึกขึ้นในแต่ละ part

## โครงสร้างปัจจุบัน

```text
MyState/
  BasicState/
    State/
    Binding/
  ObservableObject/
    ViewModel/
    StateObject/
    ObservedObject/
    Nested ObservableObject/
```

## เนื้อหาในแต่ละ Part

### PART 1

อยู่ในโฟลเดอร์ `MyState/BasicState`

หัวข้อหลักใน part นี้คือ

- `@State`
- `@Binding`

ตัวอย่างที่มีตอนนี้ เช่น

- ค่าที่ใช้แสดงผลบนหน้าจอ
- loading state
- form input
- selected item
- toggle state
- navigation state

### PART 2

อยู่ในโฟลเดอร์ `MyState/ObservableObject`

part นี้เพิ่มตัวอย่าง `ObservableObject` เข้าไปใน project แล้ว เพื่อให้เห็นลำดับการเรียนรู้จาก object ไปสู่ view ที่เป็น owner และ view ที่รับมา observe ต่อ

หัวข้อหลักใน part นี้คือ

- `ObservableObject`
- `@StateObject`
- `@ObservedObject`
- Nested `ObservableObject`

ไฟล์หลักในหมวดนี้ เช่น

- `CounterViewModel.swift`
- `CounterStateObjectView.swift`
- `CounterObservedObjectView.swift`
- `NestedObservableObjectDemoView.swift`
- `FixNestedObservableObjectDemoView.swift`

ใน part นี้นอกจากตัวอย่างพื้นฐานของ `ObservableObject` แล้ว ยังมีตัวอย่าง `Nested ObservableObject` เพิ่มเข้ามาเพื่อให้เห็นเคสที่เจอบ่อยเวลา object หนึ่งถืออีก object หนึ่งอยู่ภายใน และทำให้เข้าใจข้อจำกัดของการ update UI ในโครงสร้างแบบซ้อนกันมากขึ้น

### PART 3

หัวข้อที่วางไว้สำหรับ part ถัดไปคือ

- `Observation framework (iOS 17+)`

## แนวทางของโปรเจกต์นี้

repo นี้ตั้งใจให้เป็นแหล่งเรียนรู้ มากกว่าจะเป็น production app

ดังนั้นโครงสร้างภายในจะเน้นสิ่งเหล่านี้

- แยกโฟลเดอร์ตามหัวข้อเพื่อให้ค้นง่าย
- ทำตัวอย่างให้เรียบง่ายก่อน เพื่อให้โฟกัสที่แนวคิด
- ยอมให้มีโค้ดซ้ำได้ หากช่วยให้การอธิบายเข้าใจง่ายขึ้น

## เหมาะกับใคร

- คนที่เริ่มต้นเรียน SwiftUI
- คนที่อยากทบทวนเรื่อง state management แบบพื้นฐาน
- คนที่อ่านบทความและอยากเปิดดูตัวอย่างควบคู่กัน
- คนที่อยากเห็นความต่างระหว่าง `@State`, `@Binding`, `ObservableObject`, `@StateObject` และ `@ObservedObject`

## หมายเหตุ

- ตัวอย่างใน repo นี้จะค่อย ๆ เพิ่มตามเนื้อหาในแต่ละ part
- หัวข้อ `Observation framework` จะถูกแยกไปอยู่ใน PART 3 ตามลำดับการเรียนรู้

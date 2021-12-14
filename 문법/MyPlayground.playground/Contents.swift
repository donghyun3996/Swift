import Foundation
import RxSwift

print("just")
Observable<Int>.just(1)
    .subscribe(onNext:{
        print($0)
    })


print("of")
Observable<Int>.of(1,2,3,4,5)
    .subscribe(onNext:{
        print($0)
    })
print("from")
Observable.from([1,2,3,4,5])
    .subscribe(onNext:{
        print($0)
    })

print("ob")
Observable.of(1,2,3)
    .subscribe{
        print($0)
    }

print("ob")
Observable.of(1,2,3)
    .subscribe{
        if let element = $0.element
        {
            print($0)
        }
            
    }

print("single1")

Single<String>.just("s")
    .subscribe(
        onSuccess: {print($0)}, onFailure: {print("error:\($0)")}, onDisposed: {print("disposed")}
    )
    .disposed(by: disposeBag)


print("single2")
Observable<String>.create{ observer -> Disposable in
    observer.onError(TrairsError.single)
    return Disposables.create()
}
    .asSingle()
    .subscribe {
    onSuccess:{
        print($0)
    }, zonFailure: {
        print("error: \($0.localizedDescription)")
    }, onDisposed: {
        print("disposed")
    }
    .dispose(by DisposeBag)
        


print("Ddddddd")
Observable<Void>.empty()
    .subscribe{
        print($0)
    }


print("navvvvvv")
Observable.never()
    .debug("naver")
    .subscibe(onNExt:{
       print($0)
    },
    onCompleted:{
        print("completed")
    })


print("single1")

Single<String>.just("s")
    .subscribe(
        onSuccess: {print($0)}, onFailure: {print("error:\($0)")}, onDisposed: {print("disposed")}
    )
    .dispose(by: disposeBag)


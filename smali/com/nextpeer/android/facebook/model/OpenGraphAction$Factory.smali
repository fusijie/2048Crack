.class public final Lcom/nextpeer/android/facebook/model/OpenGraphAction$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/model/OpenGraphAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createForPost()Lcom/nextpeer/android/facebook/model/OpenGraphAction;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/nextpeer/android/facebook/model/OpenGraphAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/nextpeer/android/facebook/model/OpenGraphAction;

    move-result-object v0

    return-object v0
.end method

.method public static createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/nextpeer/android/facebook/model/OpenGraphAction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nextpeer/android/facebook/model/OpenGraphAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/nextpeer/android/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/model/OpenGraphAction;

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/nextpeer/android/facebook/model/OpenGraphAction;->setType(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static createForPost(Ljava/lang/String;)Lcom/nextpeer/android/facebook/model/OpenGraphAction;
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/model/OpenGraphAction;

    invoke-static {v0, p0}, Lcom/nextpeer/android/facebook/model/OpenGraphAction$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;)Lcom/nextpeer/android/facebook/model/OpenGraphAction;

    move-result-object v0

    return-object v0
.end method

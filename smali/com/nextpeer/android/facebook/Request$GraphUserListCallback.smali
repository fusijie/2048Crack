.class public interface abstract Lcom/nextpeer/android/facebook/Request$GraphUserListCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GraphUserListCallback"
.end annotation


# virtual methods
.method public abstract onCompleted(Ljava/util/List;Lcom/nextpeer/android/facebook/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/model/GraphUser;",
            ">;",
            "Lcom/nextpeer/android/facebook/Response;",
            ")V"
        }
    .end annotation
.end method

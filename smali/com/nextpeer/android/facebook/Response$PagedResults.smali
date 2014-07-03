.class interface abstract Lcom/nextpeer/android/facebook/Response$PagedResults;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nextpeer/android/facebook/model/GraphObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "PagedResults"
.end annotation


# virtual methods
.method public abstract getData()Lcom/nextpeer/android/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPaging()Lcom/nextpeer/android/facebook/Response$PagingInfo;
.end method

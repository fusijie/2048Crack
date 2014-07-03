.class public interface abstract Lcom/nextpeer/android/facebook/model/GraphObjectList;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract castToListOf(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<TU;>;"
        }
    .end annotation
.end method

.method public abstract getInnerJSONArray()Lorg/json/JSONArray;
.end method

.class public interface abstract Lcom/nextpeer/android/facebook/model/GraphObject;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/model/GraphObject$Factory;
    }
.end annotation


# virtual methods
.method public abstract asMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cast(Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getInnerJSONObject()Lorg/json/JSONObject;
.end method

.method public abstract getProperty(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getPropertyAs(Ljava/lang/String;Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getPropertyAsList(Ljava/lang/String;Ljava/lang/Class;)Lcom/nextpeer/android/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/nextpeer/android/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/nextpeer/android/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract removeProperty(Ljava/lang/String;)V
.end method

.method public abstract setProperty(Ljava/lang/String;Ljava/lang/Object;)V
.end method

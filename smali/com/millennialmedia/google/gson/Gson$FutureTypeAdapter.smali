.class Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/millennialmedia/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1116
    .local p0, this:Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;,"Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1131
    .local p0, this:Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;,"Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Lcom/millennialmedia/google/gson/TypeAdapter;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p0, this:Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;,"Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p1, typeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;,"Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    if-eqz v0, :cond_0

    .line 1123
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1125
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 1126
    return-void
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1140
    .local p0, this:Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;,"Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter<TT;>;"
    .local p2, value:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 1144
    return-void
.end method

.class final Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$10;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$10;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p1, p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 349
    return-void
.end method

.method public bridge synthetic write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$10;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method

.class final Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$8;
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
    .line 292
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 298
    const/4 v1, 0x0

    .line 301
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 292
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$8;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Number;

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
    .line 310
    invoke-virtual {p1, p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 311
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
    .line 292
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$8;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method

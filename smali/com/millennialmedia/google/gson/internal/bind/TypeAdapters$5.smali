.class final Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$5;
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
    .line 213
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 219
    const/4 v2, 0x0

    .line 223
    :goto_0
    return-object v2

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextInt()I

    move-result v1

    .line 223
    .local v1, intValue:I
    int-to-byte v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 224
    .end local v1           #intValue:I
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v2, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v2
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
    .line 213
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$5;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Number;

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
    .line 232
    invoke-virtual {p1, p2}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 233
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
    .line 213
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters$5;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method

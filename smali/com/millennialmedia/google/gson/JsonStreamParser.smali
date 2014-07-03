.class public final Lcom/millennialmedia/google/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/millennialmedia/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/millennialmedia/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "reader"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/millennialmedia/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/JsonStreamParser;->parser:Lcom/millennialmedia/google/gson/stream/JsonReader;

    .line 80
    iget-object v0, p0, Lcom/millennialmedia/google/gson/JsonStreamParser;->parser:Lcom/millennialmedia/google/gson/stream/JsonReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 68
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    .line 69
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .line 124
    iget-object v2, p0, Lcom/millennialmedia/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/JsonStreamParser;->parser:Lcom/millennialmedia/google/gson/stream/JsonReader;

    invoke-virtual {v1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/millennialmedia/google/gson/stream/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/millennialmedia/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    :try_start_1
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Lcom/millennialmedia/google/gson/stream/MalformedJsonException;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 132
    .end local v0           #e:Lcom/millennialmedia/google/gson/stream/MalformedJsonException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 129
    :catch_1
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v1, Lcom/millennialmedia/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/millennialmedia/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public next()Lcom/millennialmedia/google/gson/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonStreamParser;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/google/gson/JsonStreamParser;->parser:Lcom/millennialmedia/google/gson/stream/JsonReader;

    invoke-static {v1}, Lcom/millennialmedia/google/gson/internal/Streams;->parse(Lcom/millennialmedia/google/gson/stream/JsonReader;)Lcom/millennialmedia/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/millennialmedia/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/StackOverflowError;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonParseException;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 105
    .end local v0           #e:Ljava/lang/StackOverflowError;
    :catch_1
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/OutOfMemoryError;
    new-instance v1, Lcom/millennialmedia/google/gson/JsonParseException;

    const-string v2, "Failed parsing JSON source to Json"

    invoke-direct {v1, v2, v0}, Lcom/millennialmedia/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 108
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v0

    .line 109
    .local v0, e:Lcom/millennialmedia/google/gson/JsonParseException;
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/EOFException;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/NoSuchElementException;

    .end local v0           #e:Lcom/millennialmedia/google/gson/JsonParseException;
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_1
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/JsonStreamParser;->next()Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

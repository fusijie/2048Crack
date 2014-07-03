.class public final Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;
.super Lcom/millennialmedia/google/gson/stream/JsonReader;
.source "JsonTreeReader.java"


# static fields
.field private static final SENTINEL_CLOSED:Ljava/lang/Object;

.field private static final UNREADABLE_READER:Ljava/io/Reader;


# instance fields
.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader$1;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/google/gson/JsonElement;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 64
    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->UNREADABLE_READER:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method private expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V
    .locals 3
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    return-void
.end method

.method private peekStack()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private popStack()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 72
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonArray;

    .line 73
    .local v0, array:Lcom/millennialmedia/google/gson/JsonArray;
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public beginObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 88
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonObject;

    .line 89
    .local v0, object:Lcom/millennialmedia/google/gson/JsonObject;
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    sget-object v1, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 80
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 81
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 96
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    .line 104
    .local v0, token:Lcom/millennialmedia/google/gson/stream/JsonToken;
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextBoolean()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lcom/millennialmedia/google/gson/stream/JsonToken;->BOOLEAN:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 195
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    return v0
.end method

.method public nextDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v2

    .line 209
    .local v2, token:Lcom/millennialmedia/google/gson/stream/JsonToken;
    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 210
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-virtual {v3}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsDouble()D

    move-result-wide v0

    .line 214
    .local v0, result:D
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->isLenient()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON forbids NaN and infinities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 219
    return-wide v0
.end method

.method public nextInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v1

    .line 239
    .local v1, token:Lcom/millennialmedia/google/gson/stream/JsonToken;
    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v1, v2, :cond_0

    .line 240
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-virtual {v2}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsInt()I

    move-result v0

    .line 244
    .local v0, result:I
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 245
    return v0
.end method

.method public nextLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v2

    .line 226
    .local v2, token:Lcom/millennialmedia/google/gson/stream/JsonToken;
    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_0

    .line 227
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-virtual {v3}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsLong()J

    move-result-wide v0

    .line 231
    .local v0, result:J
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 232
    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonToken;->NAME:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 174
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 175
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public nextNull()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 202
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    .line 203
    return-void
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    .line 184
    .local v0, token:Lcom/millennialmedia/google/gson/stream/JsonToken;
    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public peek()Lcom/millennialmedia/google/gson/stream/JsonToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v4, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    .line 144
    :goto_0
    return-object v4

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, o:Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/Iterator;

    if-eqz v4, :cond_4

    .line 116
    iget-object v4, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    iget-object v5, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v0, v4, Lcom/millennialmedia/google/gson/JsonObject;

    .local v0, isObject:Z
    move-object v1, v2

    .line 117
    check-cast v1, Ljava/util/Iterator;

    .line 118
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    if-eqz v0, :cond_1

    .line 120
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->NAME:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v4

    goto :goto_0

    .line 126
    :cond_2
    if-eqz v0, :cond_3

    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->END_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 128
    .end local v0           #isObject:Z
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_4
    instance-of v4, v2, Lcom/millennialmedia/google/gson/JsonObject;

    if-eqz v4, :cond_5

    .line 129
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 130
    :cond_5
    instance-of v4, v2, Lcom/millennialmedia/google/gson/JsonArray;

    if-eqz v4, :cond_6

    .line 131
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 132
    :cond_6
    instance-of v4, v2, Lcom/millennialmedia/google/gson/JsonPrimitive;

    if-eqz v4, :cond_a

    move-object v3, v2

    .line 133
    check-cast v3, Lcom/millennialmedia/google/gson/JsonPrimitive;

    .line 134
    .local v3, primitive:Lcom/millennialmedia/google/gson/JsonPrimitive;
    invoke-virtual {v3}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isString()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 135
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->STRING:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 136
    :cond_7
    invoke-virtual {v3}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 137
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->BOOLEAN:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 138
    :cond_8
    invoke-virtual {v3}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 139
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->NUMBER:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 141
    :cond_9
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 143
    .end local v3           #primitive:Lcom/millennialmedia/google/gson/JsonPrimitive;
    :cond_a
    instance-of v4, v2, Lcom/millennialmedia/google/gson/JsonNull;

    if-eqz v4, :cond_b

    .line 144
    sget-object v4, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    goto :goto_0

    .line 145
    :cond_b
    sget-object v4, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->SENTINEL_CLOSED:Ljava/lang/Object;

    if-ne v2, v4, :cond_c

    .line 146
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "JsonReader is closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    :cond_c
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4
.end method

.method public promoteNameToValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    sget-object v2, Lcom/millennialmedia/google/gson/stream/JsonToken;->NAME:Lcom/millennialmedia/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->expect(Lcom/millennialmedia/google/gson/stream/JsonToken;)V

    .line 274
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peekStack()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 275
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->stack:Ljava/util/List;

    new-instance v4, Lcom/millennialmedia/google/gson/JsonPrimitive;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/millennialmedia/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    return-void
.end method

.method public skipValue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/google/gson/stream/JsonToken;->NAME:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->nextName()Ljava/lang/String;

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/internal/bind/JsonTreeReader;->popStack()Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/TypeAdapter;Lcom/millennialmedia/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "keyType"
    .parameter
    .parameter "valueType"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TV;>;",
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p4, keyTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;,"Lcom/millennialmedia/google/gson/TypeAdapter<TK;>;"
    .local p6, valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;,"Lcom/millennialmedia/google/gson/TypeAdapter<TV;>;"
    .local p7, constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;,"Lcom/millennialmedia/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;"
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    .line 186
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 188
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p6, p5}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 190
    iput-object p7, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    .line 191
    return-void
.end method

.method private keyToString(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .parameter "keyElement"

    .prologue
    .line 284
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 285
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/millennialmedia/google/gson/JsonPrimitive;

    move-result-object v0

    .line 286
    .local v0, primitive:Lcom/millennialmedia/google/gson/JsonPrimitive;
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .end local v0           #primitive:Lcom/millennialmedia/google/gson/JsonPrimitive;
    :goto_0
    return-object v1

    .line 288
    .restart local v0       #primitive:Lcom/millennialmedia/google/gson/JsonPrimitive;
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    invoke-virtual {v0}, Lcom/millennialmedia/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 293
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 295
    .end local v0           #primitive:Lcom/millennialmedia/google/gson/JsonPrimitive;
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    const-string v1, "null"

    goto :goto_0

    .line 298
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v2

    .line 196
    .local v2, peek:Lcom/millennialmedia/google/gson/stream/JsonToken;
    sget-object v5, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v2, v5, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 198
    const/4 v1, 0x0

    .line 229
    :goto_0
    return-object v1

    .line 201
    :cond_0
    iget-object v5, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    invoke-interface {v5}, Lcom/millennialmedia/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 203
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    sget-object v5, Lcom/millennialmedia/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v2, v5, :cond_3

    .line 204
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginArray()V

    .line 205
    :goto_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginArray()V

    .line 207
    iget-object v5, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, key:Ljava/lang/Object;,"TK;"
    iget-object v5, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    .line 209
    .local v4, value:Ljava/lang/Object;,"TV;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 210
    .local v3, replaced:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_1

    .line 211
    new-instance v5, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endArray()V

    goto :goto_1

    .line 215
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #replaced:Ljava/lang/Object;,"TV;"
    .end local v4           #value:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginObject()V

    .line 218
    :cond_4
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 219
    sget-object v5, Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/google/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/millennialmedia/google/gson/stream/JsonReader;)V

    .line 220
    iget-object v5, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .restart local v0       #key:Ljava/lang/Object;,"TK;"
    iget-object v5, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v5, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v4

    .line 222
    .restart local v4       #value:Ljava/lang/Object;,"TV;"
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 223
    .restart local v3       #replaced:Ljava/lang/Object;,"TV;"
    if-eqz v3, :cond_4

    .line 224
    new-instance v5, Lcom/millennialmedia/google/gson/JsonSyntaxException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "duplicate key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/millennialmedia/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 227
    .end local v0           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #replaced:Ljava/lang/Object;,"TV;"
    .end local v4           #value:Ljava/lang/Object;,"TV;"
    :cond_5
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endObject()V

    goto/16 :goto_0
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
    .line 175
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    check-cast p2, Ljava/util/Map;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 9
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;,"Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<TK;TV;>;"
    if-nez p2, :cond_0

    .line 235
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->nullValue()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 280
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v7, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;

    #getter for: Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z
    invoke-static {v7}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;->access$000(Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 240
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 241
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 242
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 243
    iget-object v7, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 245
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 249
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    .line 250
    .local v1, hasComplexKeys:Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 252
    .local v5, keys:Ljava/util/List;,"Ljava/util/List<Lcom/millennialmedia/google/gson/JsonElement;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    .local v6, values:Ljava/util/List;,"Ljava/util/List<TV;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 254
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v7, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/millennialmedia/google/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/millennialmedia/google/gson/JsonElement;

    move-result-object v4

    .line 256
    .local v4, keyElement:Lcom/millennialmedia/google/gson/JsonElement;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v4}, Lcom/millennialmedia/google/gson/JsonElement;->isJsonArray()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Lcom/millennialmedia/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x1

    :goto_3
    or-int/2addr v1, v7

    .line 260
    goto :goto_2

    .line 258
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 262
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4           #keyElement:Lcom/millennialmedia/google/gson/JsonElement;
    :cond_5
    if-eqz v1, :cond_7

    .line 263
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 264
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 265
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 266
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/millennialmedia/google/gson/JsonElement;

    invoke-static {v7, p1}, Lcom/millennialmedia/google/gson/internal/Streams;->write(Lcom/millennialmedia/google/gson/JsonElement;Lcom/millennialmedia/google/gson/stream/JsonWriter;)V

    .line 267
    iget-object v7, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 270
    :cond_6
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto/16 :goto_0

    .line 272
    .end local v2           #i:I
    :cond_7
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 273
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_8

    .line 274
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/millennialmedia/google/gson/JsonElement;

    .line 275
    .restart local v4       #keyElement:Lcom/millennialmedia/google/gson/JsonElement;
    invoke-direct {p0, v4}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/millennialmedia/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 276
    iget-object v7, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 278
    .end local v4           #keyElement:Lcom/millennialmedia/google/gson/JsonElement;
    :cond_8
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endObject()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto/16 :goto_0
.end method

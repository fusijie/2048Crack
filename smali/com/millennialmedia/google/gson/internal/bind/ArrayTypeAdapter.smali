.class public final Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;
.super Lcom/millennialmedia/google/gson/TypeAdapter;
.source "ArrayTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final componentTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter$1;

    invoke-direct {v0}, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/millennialmedia/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/Class;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;,"Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    .local p2, componentTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;,"Lcom/millennialmedia/google/gson/TypeAdapter<TE;>;"
    .local p3, componentType:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/millennialmedia/google/gson/TypeAdapter;-><init>()V

    .line 66
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p2, p3}, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    .line 68
    iput-object p3, p0, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    .line 69
    return-void
.end method


# virtual methods
.method public read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;,"Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->peek()Lcom/millennialmedia/google/gson/stream/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/millennialmedia/google/gson/stream/JsonToken;->NULL:Lcom/millennialmedia/google/gson/stream/JsonToken;

    if-ne v4, v5, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->nextNull()V

    .line 75
    const/4 v0, 0x0

    .line 89
    :cond_0
    return-object v0

    .line 78
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v3, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->beginArray()V

    .line 80
    :goto_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    iget-object v4, p0, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v4, p1}, Lcom/millennialmedia/google/gson/TypeAdapter;->read(Lcom/millennialmedia/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    .local v2, instance:Ljava/lang/Object;,"TE;"
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v2           #instance:Ljava/lang/Object;,"TE;"
    :cond_2
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonReader;->endArray()V

    .line 85
    iget-object v4, p0, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->componentType:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, array:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 87
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .parameter "out"
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;,"Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter<TE;>;"
    if-nez p2, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->nullValue()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 107
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->beginArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .local v1, length:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 103
    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, value:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/ArrayTypeAdapter;->componentTypeAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;

    invoke-virtual {v3, p1, v2}, Lcom/millennialmedia/google/gson/TypeAdapter;->write(Lcom/millennialmedia/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    .end local v2           #value:Ljava/lang/Object;,"TE;"
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/stream/JsonWriter;->endArray()Lcom/millennialmedia/google/gson/stream/JsonWriter;

    goto :goto_0
.end method

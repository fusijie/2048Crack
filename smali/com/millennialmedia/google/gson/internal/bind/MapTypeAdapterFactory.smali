.class public final Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
    }
.end annotation


# instance fields
.field private final complexMapKeySerialization:Z

.field private final constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Z)V
    .locals 0
    .parameter "constructorConstructor"
    .parameter "complexMapKeySerialization"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    .line 138
    iput-boolean p2, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    return v0
.end method

.method private getKeyAdapter(Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 1
    .parameter "context"
    .parameter "keyType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 171
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_0

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/millennialmedia/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/millennialmedia/google/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 12
    .parameter "gson"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, typeToken:Lcom/millennialmedia/google/gson/reflect/TypeToken;,"Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 145
    .local v11, type:Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v9

    .line 146
    .local v9, rawType:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 150
    :cond_0
    invoke-static {v11}, Lcom/millennialmedia/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v10

    .line 151
    .local v10, rawTypeOfSrc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v11, v10}, Lcom/millennialmedia/google/gson/internal/$Gson$Types;->getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 153
    .local v8, keyAndValueTypes:[Ljava/lang/reflect/Type;
    aget-object v1, v8, v2

    invoke-direct {p0, p1, v1}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;->getKeyAdapter(Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v4

    .line 154
    .local v4, keyAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;,"Lcom/millennialmedia/google/gson/TypeAdapter<*>;"
    aget-object v1, v8, v5

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/millennialmedia/google/gson/Gson;->getAdapter(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;

    move-result-object v6

    .line 156
    .local v6, valueAdapter:Lcom/millennialmedia/google/gson/TypeAdapter;,"Lcom/millennialmedia/google/gson/TypeAdapter<*>;"
    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v1, p2}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->get(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    move-result-object v7

    .line 161
    .local v7, constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;,"Lcom/millennialmedia/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    aget-object v3, v8, v2

    aget-object v5, v8, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/millennialmedia/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/TypeAdapter;Lcom/millennialmedia/google/gson/internal/ObjectConstructor;)V

    .line 163
    .local v0, result:Lcom/millennialmedia/google/gson/TypeAdapter;,"Lcom/millennialmedia/google/gson/TypeAdapter<TT;>;"
    goto :goto_0
.end method

.class public final Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/millennialmedia/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

.field private final excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

.field private final fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Lcom/millennialmedia/google/gson/FieldNamingStrategy;Lcom/millennialmedia/google/gson/internal/Excluder;)V
    .locals 0
    .parameter "constructorConstructor"
    .parameter "fieldNamingPolicy"
    .parameter "excluder"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    .line 56
    iput-object p2, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    .line 57
    iput-object p3, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    .line 58
    return-void
.end method

.method private createBoundField(Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/millennialmedia/google/gson/reflect/TypeToken;ZZ)Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .locals 9
    .parameter "context"
    .parameter "field"
    .parameter "name"
    .parameter
    .parameter "serialize"
    .parameter "deserialize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;ZZ)",
            "Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, fieldType:Lcom/millennialmedia/google/gson/reflect/TypeToken;,"Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;"
    invoke-virtual {p4}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v8

    .line 93
    .local v8, isPrimitive:Z
    new-instance v0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move-object v1, p0

    move-object v2, p3

    move v3, p5

    move v4, p6

    move-object v5, p1

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method

.method private getBoundFields(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
    .locals 17
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/google/gson/Gson;",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, type:Lcom/millennialmedia/google/gson/reflect/TypeToken;,"Lcom/millennialmedia/google/gson/reflect/TypeToken<*>;"
    .local p3, raw:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v16, Ljava/util/LinkedHashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V

    .line 126
    .local v16, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    :cond_0
    return-object v16

    .line 130
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 131
    .local v10, declaredType:Ljava/lang/reflect/Type;
    :goto_0
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v1, :cond_0

    .line 132
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 133
    .local v12, fields:[Ljava/lang/reflect/Field;
    move-object v8, v12

    .local v8, arr$:[Ljava/lang/reflect/Field;
    array-length v14, v8

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    if-ge v13, v14, :cond_4

    aget-object v3, v8, v13

    .line 134
    .local v3, field:Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    .line 135
    .local v6, serialize:Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v1}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 136
    .local v7, deserialize:Z
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    .line 133
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 139
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v11

    .line 142
    .local v11, fieldType:Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/millennialmedia/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/millennialmedia/google/gson/reflect/TypeToken;ZZ)Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    move-result-object v9

    .line 145
    .local v9, boundField:Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    iget-object v1, v9, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 146
    .local v15, previous:Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    if-eqz v15, :cond_2

    .line 147
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v15, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v3           #field:Ljava/lang/reflect/Field;
    .end local v6           #serialize:Z
    .end local v7           #deserialize:Z
    .end local v9           #boundField:Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    .end local v11           #fieldType:Ljava/lang/reflect/Type;
    .end local v15           #previous:Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/millennialmedia/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object p2

    .line 154
    invoke-virtual/range {p2 .. p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p3

    .line 155
    goto/16 :goto_0
.end method

.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2
    .parameter "f"

    .prologue
    .line 68
    const-class v1, Lcom/millennialmedia/google/gson/annotations/SerializedName;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/google/gson/annotations/SerializedName;

    .line 69
    .local v0, serializedName:Lcom/millennialmedia/google/gson/annotations/SerializedName;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/millennialmedia/google/gson/FieldNamingStrategy;

    invoke-interface {v1, p1}, Lcom/millennialmedia/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/millennialmedia/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public create(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/TypeAdapter;
    .locals 5
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
    .local p2, type:Lcom/millennialmedia/google/gson/reflect/TypeToken;,"Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p2}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, raw:Ljava/lang/Class;,"Ljava/lang/Class<-TT;>;"
    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    :goto_0
    return-object v2

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v3, p2}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->get(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 82
    .local v0, constructor:Lcom/millennialmedia/google/gson/internal/ObjectConstructor;,"Lcom/millennialmedia/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v3, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    invoke-direct {p0, p1, p2, v1}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/millennialmedia/google/gson/Gson;Lcom/millennialmedia/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v0, v4, v2}, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/millennialmedia/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 2
    .parameter "f"
    .parameter "serialize"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/millennialmedia/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/millennialmedia/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

// alterado de classe para função statefull
// testar depois como classe para aprendizado

import React, { useState, useEffect } from 'react';

import 'antd/dist/antd.css';
import './styles.css';

import api from '../../services/api'

import { Layout, Menu, PageHeader, Button, Table, Tag, Badge } from 'antd';
import {
    UserOutlined,
    MobileOutlined,
} from '@ant-design/icons';

const { SubMenu } = Menu
const { Header, Sider, Content } = Layout;


const SiderDemo = (props) => {

    // estado
    const [promoters, setPromoters] = useState([])

    // busca na API 
    const dados = useEffect(() => {
        api.get('/promoters')
            .then((res) => {
                setPromoters(res.data)
            })
    }, [])

    // renderiza a tabela
    const columns = [

        {
            title: 'Cod',
            dataIndex: 'cod',
            key: 'cod',
        },
        {
            title: 'Nome',
            dataIndex: 'nome',
            key: 'nome',
            render: text => <a>{text}</a>,
        },
        {
            title: 'Supervisão',
            dataIndex: 'supervisaoNome',
            key: 'supervisaoNome',
        },
        {
            title: 'Gerẽncia',
            dataIndex: 'gerenciaNome',
            key: 'gerenciaNome',
        },
        {
            title: 'Gestor',
            dataIndex: 'gestorNome',
            key: 'gestorNome',
        },

    ];

    return (
        <Layout>
            <Header className="header">
                <div className="logo" />
                <Menu theme="dark" mode="horizontal" defaultSelectedKeys={['1']}>
                    <Menu.Item key="1">Promotores</Menu.Item>
                    <Menu.Item key="2">Pesquisas</Menu.Item>
                    <Menu.Item key="3">Campanha</Menu.Item>
                </Menu>
            </Header>
            <Layout>
                <Sider width={200} className="site-layout-background">
                    <Menu
                        mode="inline"
                        defaultSelectedKeys={['1']}
                        defaultOpenKeys={['sub1']}
                        style={{ height: '100%', borderRight: 0 }}
                    >
                        <SubMenu
                            key="sub1"
                            title={<span><UserOutlined />Promotor</span>}
                        >
                            <Menu.Item key="1">Cadastro</Menu.Item>
                            <Menu.Item key="2">Férias</Menu.Item>
                            <Menu.Item key="3">Atestado</Menu.Item>
                            <Menu.Item key="4">Afastamento</Menu.Item>
                        </SubMenu>
                        <SubMenu
                            key="sub2"
                            title={<span><MobileOutlined />Aparelhos</span>}
                        >
                            <Menu.Item key="5">Solicitação</Menu.Item>
                            <Menu.Item key="6">Ordem Serviço</Menu.Item>
                            <Menu.Item key="7">Inativar</Menu.Item>
                        </SubMenu>
                    </Menu>
                </Sider>
                <Layout style={{ padding: '0 24px 24px' }}>
                    <PageHeader
                        ghost={false}
                        onBack={() => window.history.back()}
                        title="Promotores"
                        subTitle={promoters.length}
                        extra={[
                            <Button key="3" type="danger">Ocorrência</Button>,
                            <Button key="2">Atendimento</Button>,
                            <Button key="1" type="primary">Inserir +</Button>,
                        ]}
                    />
                    <Content
                        className="site-layout-background"
                        style={{
                            padding: 24,
                            margin: 0,
                            minHeight: 280,
                        }}
                    >

                        <Table columns={columns} dataSource={promoters} />

                    </Content>
                </Layout>
            </Layout>
        </Layout>
    );
}

export default SiderDemo